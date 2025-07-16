# netToTo

通过 SSH 工具，将 Github Action 服务器设置为一个动态端口转发的服务器，类似 Socket 代理功能。

然后，将该服务的端口映射到指定的一台便于访问的 SSHD 服务器上。

## Github Action 一些特性

- 开源项目（即代码是公开权限的项目）使用 Action 没有配额限制
- 私有项目使用 Action 默认有配额限制，默认 2000 核时的配额
- Github 流水线执行超时时间为：6小时
