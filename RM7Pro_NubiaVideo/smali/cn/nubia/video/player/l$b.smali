.class Lcn/nubia/video/player/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/l;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/l;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/l$b;->a:Lcn/nubia/video/player/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/l$b;->a:Lcn/nubia/video/player/l;

    invoke-virtual {p1}, Lcn/nubia/video/player/l;->a()V

    :goto_0
    return-void
.end method
