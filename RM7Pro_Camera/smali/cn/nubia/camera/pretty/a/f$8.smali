.class Lcn/nubia/camera/pretty/a/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$8;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    const-string p2, "PrettyBokehShutterButtonClickListener"

    const-string v0, "preview onPictureTaken"

    .line 233
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 230
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$8;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
