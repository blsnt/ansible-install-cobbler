# ansible自动安装cobbler自动装机

1. 修改hosts里面的主机地址
2. 修改roles/cobbler/vars/main.yml里面的变量
3. 可以使用ssh.sh分发密钥
4. 需要将centos7镜像上传到files里面的centos7目录
5. 将代码git clone root家目录下面
4. 执行(需要安装ansible)
```python
ansible-playbook -i hosts cobbler.yml
```