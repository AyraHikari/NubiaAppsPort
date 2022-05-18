.class final enum Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field public static final enum b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field public static final enum c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field public static final enum d:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field public static final enum e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field public static final enum f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

.field private static final synthetic g:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v1, "OUT_OF_BOUNDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->b:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    new-instance v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v5, "LEFT_TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->c:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    new-instance v5, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v7, "RIGHT_TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->d:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    new-instance v7, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v9, "LEFT_BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    new-instance v9, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const-string v11, "RIGHT_BOTTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->g:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    return-object p0
.end method

.method public static values()[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->g:[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    invoke-virtual {v0}, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$e;

    return-object v0
.end method
