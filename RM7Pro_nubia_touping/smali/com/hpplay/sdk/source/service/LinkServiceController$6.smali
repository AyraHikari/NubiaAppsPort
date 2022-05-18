.class Lcom/hpplay/sdk/source/service/LinkServiceController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/service/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/LinkServiceController;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/LinkServiceController;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$6;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(I)V
    .locals 2

    .prologue
    .line 230
    const-string v0, "LinkServiceController"

    const-string v1, "im onConnectFailed im connect failed "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$6;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;I)V

    .line 232
    return-void
.end method
