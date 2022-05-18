.class Lcn/nubia/camera/clone/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/l;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcn/nubia/camera/clone/l$6;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1178
    iget-object p1, p0, Lcn/nubia/camera/clone/l$6;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->j(Lcn/nubia/camera/clone/l;)V

    return-void
.end method
