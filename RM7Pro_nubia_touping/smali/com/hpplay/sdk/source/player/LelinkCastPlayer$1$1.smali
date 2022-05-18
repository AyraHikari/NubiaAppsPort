.class Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/log/UploadLogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;->onReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1$1;->a:Lcom/hpplay/sdk/source/player/LelinkCastPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadStatus(I)V
    .locals 3

    .prologue
    .line 95
    const-string v0, "LelinkCastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadStatus i ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
