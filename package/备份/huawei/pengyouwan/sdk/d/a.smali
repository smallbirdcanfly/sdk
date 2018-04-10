.class public Lcom/pengyouwan/sdk/d/a;
.super Ljava/lang/Object;
.source "FolderManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/pywSDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->b:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->c:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->d:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "other/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->e:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->f:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->g:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/sdk/d/a;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, "isSDCardAvailable":Z
    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/pengyouwan/sdk/d/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/f;->a(Ljava/lang/String;Z)Z

    .line 82
    :cond_0
    return-void
.end method
