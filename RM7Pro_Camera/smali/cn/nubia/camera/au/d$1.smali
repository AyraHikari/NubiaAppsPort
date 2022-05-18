.class Lcn/nubia/camera/au/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/d;->c(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/d;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/au/d$1;->a:Lcn/nubia/camera/au/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/au/d$1;->a:Lcn/nubia/camera/au/d;

    invoke-static {p1}, Lcn/nubia/camera/au/d;->a(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/au/a;->i()V

    return-void
.end method
