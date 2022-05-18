.class Lcn/nubia/camera/pretty/a/f$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$10;->b:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$10;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    const-string v0, "PrettyBokehShutterButtonClickListener"

    const-string v1, "bokehJpeg onComplete"

    .line 256
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$10;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/a/b;->a([B)V

    return-void
.end method
