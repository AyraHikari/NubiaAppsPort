.class Lcn/nubia/camera/zoom/arc/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$1;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$1;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    return p1
.end method
