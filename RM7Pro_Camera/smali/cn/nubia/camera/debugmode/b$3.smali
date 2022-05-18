.class Lcn/nubia/camera/debugmode/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/debugmode/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/debugmode/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/debugmode/b;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcn/nubia/camera/debugmode/b$3;->a:Lcn/nubia/camera/debugmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/debugmode/b$3;->a:Lcn/nubia/camera/debugmode/b;

    iget-object p1, p1, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    invoke-virtual {p1}, Lcn/nubia/camera/debugmode/a;->dismiss()V

    return-void
.end method
