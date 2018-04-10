.class public Lcom/pyw/plugin/huawei/ReqTask;
.super Landroid/os/AsyncTask;
.source "ReqTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pyw/plugin/huawei/ReqTask$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delegate:Lcom/pyw/plugin/huawei/ReqTask$Delegate;

.field private reqParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/pyw/plugin/huawei/ReqTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pyw/plugin/huawei/ReqTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pyw/plugin/huawei/ReqTask$Delegate;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "deg"    # Lcom/pyw/plugin/huawei/ReqTask$Delegate;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pyw/plugin/huawei/ReqTask$Delegate;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/pyw/plugin/huawei/ReqTask;->delegate:Lcom/pyw/plugin/huawei/ReqTask$Delegate;

    .line 12
    iput-object v0, p0, Lcom/pyw/plugin/huawei/ReqTask;->reqParams:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lcom/pyw/plugin/huawei/ReqTask;->reqUrl:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/pyw/plugin/huawei/ReqTask;->delegate:Lcom/pyw/plugin/huawei/ReqTask$Delegate;

    .line 18
    iput-object p2, p0, Lcom/pyw/plugin/huawei/ReqTask;->reqParams:Ljava/util/Map;

    .line 19
    iput-object p3, p0, Lcom/pyw/plugin/huawei/ReqTask;->reqUrl:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/huawei/ReqTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 27
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v0, "result"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/huawei/ReqTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pyw/plugin/huawei/ReqTask;->delegate:Lcom/pyw/plugin/huawei/ReqTask$Delegate;

    invoke-interface {v0, p1}, Lcom/pyw/plugin/huawei/ReqTask$Delegate;->execute(Ljava/lang/String;)V

    .line 40
    return-void
.end method
