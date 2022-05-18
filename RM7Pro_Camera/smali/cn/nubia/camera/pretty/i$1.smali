.class Lcn/nubia/camera/pretty/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/i;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/i;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/pretty/i$1;->a:Lcn/nubia/camera/pretty/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lcn/nubia/camera/pretty/i$1;->a:Lcn/nubia/camera/pretty/i;

    invoke-static {p1}, Lcn/nubia/camera/pretty/i;->a(Lcn/nubia/camera/pretty/i;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 31
    iget-object p1, p0, Lcn/nubia/camera/pretty/i$1;->a:Lcn/nubia/camera/pretty/i;

    invoke-static {p1}, Lcn/nubia/camera/pretty/i;->b(Lcn/nubia/camera/pretty/i;)V

    return-void
.end method
