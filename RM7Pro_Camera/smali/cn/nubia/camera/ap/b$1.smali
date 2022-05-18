.class Lcn/nubia/camera/ap/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ap/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ap/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/ap/b$1;->a:Lcn/nubia/camera/ap/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/ap/b$1;->a:Lcn/nubia/camera/ap/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ap/b;->a(Z)V

    return-void
.end method
