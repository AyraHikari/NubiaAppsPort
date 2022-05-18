.class Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/process/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/hpplay/sdk/source/n;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$202(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Z)Z

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$302(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;I)I

    .line 178
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk bind successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$200(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$402(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Lcom/hpplay/sdk/source/n;)Lcom/hpplay/sdk/source/n;

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$500(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$500(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$600(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$600(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$700(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$700(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$800(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->setDebugVideoFile(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 194
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk bind failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$300(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$900(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    .line 196
    return-void
.end method
