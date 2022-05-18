.class final Lcn/nubia/music/utils/CTA$1;
.super Ljava/lang/Object;
.source "CTA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/music/utils/CTA$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 64
    iget-object v0, p0, Lcn/nubia/music/utils/CTA$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    return-void
.end method
