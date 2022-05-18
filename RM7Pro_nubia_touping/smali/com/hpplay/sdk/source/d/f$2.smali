.class Lcom/hpplay/sdk/source/d/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/hpplay/common/log/UploadLogCallback;

.field final synthetic e:Lcom/hpplay/sdk/source/d/f;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/hpplay/sdk/source/d/f$2;->e:Lcom/hpplay/sdk/source/d/f;

    iput-object p2, p0, Lcom/hpplay/sdk/source/d/f$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hpplay/sdk/source/d/f$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hpplay/sdk/source/d/f$2;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/hpplay/sdk/source/d/f$2;->d:Lcom/hpplay/common/log/UploadLogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->e:Lcom/hpplay/sdk/source/d/f;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/f;->a(Lcom/hpplay/sdk/source/d/f;Z)Z

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->e:Lcom/hpplay/sdk/source/d/f;

    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/hpplay/sdk/source/d/f;->a(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 181
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->e:Lcom/hpplay/sdk/source/d/f;

    iget-object v2, p0, Lcom/hpplay/sdk/source/d/f$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/d/f$2;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/hpplay/sdk/source/d/f$2;->d:Lcom/hpplay/common/log/UploadLogCallback;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/hpplay/sdk/source/d/f;->a(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->e:Lcom/hpplay/sdk/source/d/f;

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/d/f;->a(Lcom/hpplay/sdk/source/d/f;Z)Z

    .line 188
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->d:Lcom/hpplay/common/log/UploadLogCallback;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f$2;->d:Lcom/hpplay/common/log/UploadLogCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V

    goto :goto_0
.end method
