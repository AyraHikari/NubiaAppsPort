.class Lcom/hpplay/sdk/source/browse/impl/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/hpplay/sdk/source/browse/impl/c$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/impl/c$a;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/impl/c$a;->b:Lcom/hpplay/sdk/source/browse/impl/c$b;

    .line 99
    return-void
.end method


# virtual methods
.method public onAuthFailed(I)V
    .locals 2

    .prologue
    .line 108
    const-string v0, "QRCodeController"

    const-string v1, "auth failed of qrcontroller "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/c$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/impl/c$a;->b:Lcom/hpplay/sdk/source/browse/impl/c$b;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/browse/impl/c;->b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    .line 104
    return-void
.end method
