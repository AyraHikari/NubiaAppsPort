.class public Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;
.super Ljava/lang/Object;
.source "NuCmsSportsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsSportsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Detail"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/bean/NuCmsSportsItem;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->this$0:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->type:I

    .line 118
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->url:Ljava/lang/String;

    .line 122
    return-void
.end method
