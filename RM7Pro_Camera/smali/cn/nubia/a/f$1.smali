.class Lcn/nubia/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/a/f;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/a/f$1;->a:Lcn/nubia/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/a/d;

    .line 123
    iget-boolean v0, p1, Lcn/nubia/a/d;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/f$1;->a:Lcn/nubia/a/f;

    invoke-static {v0}, Lcn/nubia/a/f;->a(Lcn/nubia/a/f;)Lcn/nubia/a/f$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/a/f$a;->a(Lcn/nubia/a/d;)V

    return-void
.end method
