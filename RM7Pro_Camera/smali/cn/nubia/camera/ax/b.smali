.class public Lcn/nubia/camera/ax/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/b/i;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    iput-object v0, p0, Lcn/nubia/camera/ax/b;->a:Lcn/nubia/b/i;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcn/nubia/camera/ax/b;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/b/i;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/nubia/camera/ax/b;->a:Lcn/nubia/b/i;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/camera/ax/b;->b:I

    return-void
.end method

.method public a(Lcn/nubia/b/i;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/camera/ax/b;->a:Lcn/nubia/b/i;

    return-void
.end method

.method public b()I
    .locals 1

    .line 37
    iget v0, p0, Lcn/nubia/camera/ax/b;->b:I

    return v0
.end method
