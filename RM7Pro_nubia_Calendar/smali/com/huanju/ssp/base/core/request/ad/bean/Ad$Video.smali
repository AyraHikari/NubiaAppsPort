.class public Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public duration:I

.field public format:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoImg:Ljava/lang/String;

.field public videoMD5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
