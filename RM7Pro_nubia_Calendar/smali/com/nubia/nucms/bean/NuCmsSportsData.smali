.class public Lcom/nubia/nucms/bean/NuCmsSportsData;
.super Ljava/lang/Object;
.source "NuCmsSportsData.java"


# instance fields
.field private matches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsData;->matches:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setMatchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsData;->matches:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsData;->version:Ljava/lang/String;

    .line 19
    return-void
.end method
