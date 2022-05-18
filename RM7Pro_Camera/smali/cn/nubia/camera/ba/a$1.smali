.class final Lcn/nubia/camera/ba/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/a;->a(Landroid/app/Activity;IIZ)Lcn/nubia/camera/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcn/nubia/camera/ba/a$1;->a:Z

    iput-object p2, p0, Lcn/nubia/camera/ba/a$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 287
    iget-boolean p2, p0, Lcn/nubia/camera/ba/a$1;->a:Z

    if-eqz p2, :cond_0

    .line 288
    iget-object p2, p0, Lcn/nubia/camera/ba/a$1;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 290
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
