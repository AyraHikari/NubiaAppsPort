.class final enum Lcn/nubia/camera/d/b$3;
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

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;IILcn/nubia/camera/d/b$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z
    .locals 0

    .line 48
    sget-object p1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
