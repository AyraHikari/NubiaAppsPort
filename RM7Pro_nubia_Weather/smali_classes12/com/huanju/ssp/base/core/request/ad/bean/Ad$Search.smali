.class public Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# instance fields
.field public imgurl:[Ljava/lang/String;

.field public search_ad_type:I

.field public soft:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Soft;

.field public source:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
