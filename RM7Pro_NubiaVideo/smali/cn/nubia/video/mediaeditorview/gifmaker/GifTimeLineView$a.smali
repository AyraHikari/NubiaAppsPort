.class public final enum Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

.field public static final enum b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

.field public static final enum c:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

.field private static final synthetic d:[Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    const-string v1, "CLIP_HEAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    const-string v3, "CLIP_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    new-instance v3, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    const-string v5, "CLIP_INDICATOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->d:[Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

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

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->d:[Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    invoke-virtual {v0}, [Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/video/mediaeditorview/gifmaker/GifTimeLineView$a;

    return-object v0
.end method
