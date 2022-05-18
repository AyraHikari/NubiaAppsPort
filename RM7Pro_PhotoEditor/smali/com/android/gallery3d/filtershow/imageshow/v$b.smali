.class Lcom/android/gallery3d/filtershow/imageshow/v$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/imageshow/v;->o0(Lcn/nubia/app/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/v;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/v$b;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/imageshow/v$b;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/v$b;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/v$b;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
