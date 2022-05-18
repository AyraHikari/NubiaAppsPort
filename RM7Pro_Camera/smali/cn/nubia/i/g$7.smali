.class Lcn/nubia/i/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/g;


# direct methods
.method constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/nubia/i/g$7;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 293
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 294
    iget-object p1, p0, Lcn/nubia/i/g$7;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->g(Lcn/nubia/i/g;)V

    return-void
.end method
