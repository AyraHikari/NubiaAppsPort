.class Lcn/nubia/video/list/ui/c$a;
.super Landroid/support/v7/widget/y$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/c;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcn/nubia/video/list/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/c$a;->c:Lcn/nubia/video/list/ui/c;

    invoke-direct {p0}, Landroid/support/v7/widget/y$c;-><init>()V

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$a;->c:Lcn/nubia/video/list/ui/c;

    invoke-static {p1}, Lcn/nubia/video/list/ui/c;->D(Lcn/nubia/video/list/ui/c;)Landroid/support/v7/widget/y;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/y;->U1()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
