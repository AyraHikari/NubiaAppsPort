.class public Lcn/nubia/camera/aj/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/k/a/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcn/nubia/k/a/a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/nubia/camera/aj/a/e;->b:I

    .line 16
    iput-object p1, p0, Lcn/nubia/camera/aj/a/e;->a:Lcn/nubia/k/a/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 24
    iget-object v0, p0, Lcn/nubia/camera/aj/a/e;->a:Lcn/nubia/k/a/a;

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 25
    iget v1, p0, Lcn/nubia/camera/aj/a/e;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    add-int/2addr v1, v2

    .line 26
    iput v1, p0, Lcn/nubia/camera/aj/a/e;->b:I

    return v3

    .line 29
    :cond_0
    iput v3, p0, Lcn/nubia/camera/aj/a/e;->b:I

    return v2
.end method
