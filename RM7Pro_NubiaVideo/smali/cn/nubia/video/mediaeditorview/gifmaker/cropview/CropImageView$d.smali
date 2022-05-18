.class public final enum Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field public static final enum c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field public static final enum d:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field private static final synthetic e:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    const-string v1, "SHOW_ALWAYS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    const-string v4, "SHOW_ON_TOUCH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    new-instance v4, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    const-string v6, "NOT_SHOW"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->d:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    new-array v6, v7, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 2
    sput-object v6, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->e:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    return-object p0
.end method

.method public static values()[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->e:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-virtual {v0}, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;->a:I

    return v0
.end method
