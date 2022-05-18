.class Lcn/nubia/camera/bb/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcn/nubia/camera/bb/v$2;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcn/nubia/camera/bb/v$2;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->I(Lcn/nubia/camera/bb/v;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v0, p0, Lcn/nubia/camera/bb/v$2;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->I(Lcn/nubia/camera/bb/v;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
