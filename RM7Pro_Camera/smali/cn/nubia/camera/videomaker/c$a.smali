.class public Lcn/nubia/camera/videomaker/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcn/nubia/camera/videomaker/c$a;->a:I

    .line 18
    iput v0, p0, Lcn/nubia/camera/videomaker/c$a;->b:I

    .line 21
    iput p1, p0, Lcn/nubia/camera/videomaker/c$a;->a:I

    .line 22
    iput p2, p0, Lcn/nubia/camera/videomaker/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 26
    iget v0, p0, Lcn/nubia/camera/videomaker/c$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 30
    iget v0, p0, Lcn/nubia/camera/videomaker/c$a;->b:I

    return v0
.end method
