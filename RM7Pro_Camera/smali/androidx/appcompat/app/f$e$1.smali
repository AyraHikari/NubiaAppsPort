.class Landroidx/appcompat/app/f$e$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f$e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f$e;)V
    .locals 0

    .line 3209
    iput-object p1, p0, Landroidx/appcompat/app/f$e$1;->a:Landroidx/appcompat/app/f$e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 3212
    iget-object p1, p0, Landroidx/appcompat/app/f$e$1;->a:Landroidx/appcompat/app/f$e;

    invoke-virtual {p1}, Landroidx/appcompat/app/f$e;->b()V

    return-void
.end method
