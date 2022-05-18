.class Lcn/nubia/camera/at/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/at/a$1;->a:Lcn/nubia/camera/at/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
