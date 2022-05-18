.class Lcn/nubia/camera/at/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/f;->d(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/f;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcn/nubia/camera/at/f$3;->a:Lcn/nubia/camera/at/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/at/f$3;->a:Lcn/nubia/camera/at/f;

    invoke-static {p1}, Lcn/nubia/camera/at/f;->a(Lcn/nubia/camera/at/f;)Lcn/nubia/camera/at/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/at/e;->d()V

    return-void
.end method
