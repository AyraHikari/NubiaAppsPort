.class Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;
.super Ljava/lang/Object;
.source "LeBoBrowseListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->onBrowse(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;


# direct methods
.method constructor <init>(Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;->this$0:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;->this$0:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    invoke-static {v0}, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->access$000(Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;->this$0:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    invoke-static {v1}, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->access$000(Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method
