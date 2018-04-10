.class Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$3;
.super Ljava/lang/Object;
.source "OtherChannelLoginCallback.java"

# interfaces
.implements Lcom/pyw/open/ILogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 175
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
