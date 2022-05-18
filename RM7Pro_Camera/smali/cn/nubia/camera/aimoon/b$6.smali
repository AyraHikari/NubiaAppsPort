.class Lcn/nubia/camera/aimoon/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$6;->a:Lcn/nubia/camera/aimoon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b$6;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/b;->i(Lcn/nubia/camera/aimoon/b;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$6;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->i(Lcn/nubia/camera/aimoon/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
