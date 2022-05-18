.class Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;
.super Ljava/lang/Object;
.source "SearchAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/SearchAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearcheResponseWrapper"
.end annotation


# instance fields
.field private mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;)V
    .locals 0
    .param p1, "searcheResponse"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;)V

    return-void
.end method


# virtual methods
.method public varargs bindingImgUrl([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->bindingImgUrl([I)V

    .line 118
    :cond_0
    return-void
.end method

.method public bindingSource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->bindingSource(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public bindingSub_title(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearcheResponseWrapper.bindingSub_title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->bindingSub_title(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public bindingTitle(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearcheResponseWrapper.bindingTitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->bindingTitle(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public closeClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "reason"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->closeClick(Landroid/view/View;ILjava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public downloadClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->downloadClick(Landroid/view/View;)V

    .line 209
    :cond_0
    return-void
.end method

.method public getDownloadAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getDownloadAppName()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getH()I

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getType()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getW()I

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->handleClick(Landroid/view/View;)V

    .line 202
    :cond_0
    return-void
.end method

.method public isDownloadApp()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isDownloadApp()Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "imageUrls"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->recordImpression(Landroid/view/View;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setImagsBindDataProxy(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "imagsBindDataProxy":Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy<[Landroid/view/View;[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->setImagsBindDataProxy(Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setTitlBindDataProxy(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "titleBindDataProxy":Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$SearcheResponseWrapper;->mSearcheResponse:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/huanju/ssp/sdk/inf/SearchAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/SearchAdImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->setTitlBindDataProxy(Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;)V

    .line 188
    :cond_0
    return-void
.end method
