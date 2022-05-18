.class final Lcn/nubia/music/utils/imageloader/DisplayOptions;
.super Ljava/lang/Object;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap$Config;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method private constructor <init>(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h:Z

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->i:I

    .line 21
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$000(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a:I

    .line 22
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$100(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b:I

    .line 23
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$200(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c:I

    .line 24
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$300(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->e:I

    .line 25
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$400(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d:I

    .line 26
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$500(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->f:Landroid/graphics/Bitmap$Config;

    .line 27
    invoke-static {p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->access$600(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->g:Z

    .line 28
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h:Z

    iput-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h:Z

    .line 29
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->i:I

    iput v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->i:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;Lcn/nubia/music/utils/imageloader/DisplayOptions$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/DisplayOptions;-><init>(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->e:I

    return v0
.end method

.method public e()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->f:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions;->i:I

    return v0
.end method
