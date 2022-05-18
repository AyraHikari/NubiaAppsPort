.class final enum Lcn/nubia/camera/d/b$1;
.super Lcn/nubia/camera/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;IILcn/nubia/camera/d/b$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p2, p1, :cond_1

    sget-object p1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-eq p3, p1, :cond_0

    sget-object p1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq p3, p1, :cond_0

    sget-object p1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne p3, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
