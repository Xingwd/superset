# 自定义版本说明

[Superset原说明](SUPERSET_README.md)

## 开发说明

### 本地开发

启动开发环境

```bash
docker compose up
```

启动之后，修改前后端代码，会热加载。

### 自定义后端依赖

创建或编辑`./docker/requirements-local.txt`文件，添加依赖。示例如下：

```txt
clickhouse-connect>=0.6.8
```

## 生产说明

### 编译Docker镜像

```bash
bash build_docker_image.sh
```

### 部署

#### Docker Compose

```bash
docker compose -f docker-compose-non-dev.yml up -d
```

在启动时安装后端依赖，创建或编辑`./docker/requirements-local.txt`文件，添加依赖。示例如下：

```txt
clickhouse-connect>=0.6.8
```
