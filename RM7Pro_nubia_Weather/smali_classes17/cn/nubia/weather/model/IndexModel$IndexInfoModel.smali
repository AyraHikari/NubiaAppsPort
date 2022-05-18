.class public Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
.super Ljava/lang/Object;
.source "IndexModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/IndexModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexInfoModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mIndexAbbr:Ljava/lang/String;

.field private mIndexAlias:Ljava/lang/String;

.field private mIndexDetail:Ljava/lang/String;

.field private mIndexLink:Ljava/lang/String;

.field private mIndexName:Ljava/lang/String;

.field private mIndexlevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;)Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    .locals 4
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;

    .prologue
    .line 236
    new-instance v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;-><init>()V

    .line 239
    .local v1, "result":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->getI1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAbbr:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->getI2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->getI3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAlias:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->getI4()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexlevel:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->getI5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexDetail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IndexModel"

    const-string v3, "Convert IndexOneJsonBean  To IndexInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;)Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    .locals 4
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "indicesInfo"    # Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;

    .prologue
    .line 252
    new-instance v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;-><init>()V

    .line 254
    .local v1, "result":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    :try_start_0
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;->ID:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAbbr:Ljava/lang/String;

    .line 255
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;->Value:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexlevel:Ljava/lang/String;

    .line 256
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;->MobileLink:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexLink:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IndexModel"

    const-string v3, "Convert IndexOneJsonBean To IndexInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getIndexLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexLink:Ljava/lang/String;

    return-object v0
.end method

.method public getmIndexAbbr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getmIndexAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getmIndexDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getmIndexName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexName:Ljava/lang/String;

    return-object v0
.end method

.method public getmIndexlevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexlevel:Ljava/lang/String;

    return-object v0
.end method

.method public setIndexLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexLink"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexLink:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setmIndexAbbr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexAbbr"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAbbr:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setmIndexAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexAlias"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAlias:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setmIndexDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexDetial"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexDetail:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setmIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexName"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setmIndexlevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIndexlevel"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexlevel:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexInfoModel [mIndexAbbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexlevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexlevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->mIndexDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
