.class Lcn/nubia/video/list/ui/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/f;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/f$a;->a:Lcn/nubia/video/list/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$a;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    add-int/2addr p3, p2

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p2, p3}, Lb/a/b/c/b/f;->F(III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
