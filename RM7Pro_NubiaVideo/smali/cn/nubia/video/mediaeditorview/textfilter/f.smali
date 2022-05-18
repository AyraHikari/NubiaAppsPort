.class public Lcn/nubia/video/mediaeditorview/textfilter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:[Ljava/lang/String;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "#FFFFFF"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->a:I

    const/16 v0, 0x19

    .line 2
    sput v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->b:I

    const-string v1, "fonts/DroidSans.ttf"

    const-string v2, "fonts/gaoduanhei.ttf"

    const-string v3, "fonts/hei.ttf"

    const-string v4, "fonts/kuaile.ttf"

    const-string v5, "fonts/huangyou.ttf"

    const-string v6, "fonts/wenyi.ttf"

    .line 3
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->d:I

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->a:I

    return v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->c:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->b:I

    return v0
.end method
