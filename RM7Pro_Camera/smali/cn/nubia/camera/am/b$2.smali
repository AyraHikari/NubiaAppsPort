.class Lcn/nubia/camera/am/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/am/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/am/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/am/b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/am/b$2;->a:Lcn/nubia/camera/am/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/am/b$2;->a:Lcn/nubia/camera/am/b;

    invoke-static {p1}, Lcn/nubia/camera/am/b;->b(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/am/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 74
    iget-object p1, p0, Lcn/nubia/camera/am/b$2;->a:Lcn/nubia/camera/am/b;

    invoke-static {p1}, Lcn/nubia/camera/am/b;->a(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->finish()V

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/am/b$2;->a:Lcn/nubia/camera/am/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/am/b;->a(Lcn/nubia/camera/am/b;Z)Z

    return-void
.end method
