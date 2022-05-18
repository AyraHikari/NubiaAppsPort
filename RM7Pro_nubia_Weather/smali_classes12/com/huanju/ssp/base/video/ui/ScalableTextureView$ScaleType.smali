.class public final enum Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;
.super Ljava/lang/Enum;
.source "ScalableTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/ScalableTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

.field public static final enum BOTTOM:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

.field public static final enum FILL:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

.field public static final enum TOP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    new-instance v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->TOP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    new-instance v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->BOTTOM:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    new-instance v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v5}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->FILL:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    sget-object v1, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->TOP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->BOTTOM:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->FILL:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->$VALUES:[Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->$VALUES:[Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    return-object v0
.end method
