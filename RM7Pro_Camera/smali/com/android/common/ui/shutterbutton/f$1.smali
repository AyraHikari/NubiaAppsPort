.class Lcom/android/common/ui/shutterbutton/f$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/f;->a(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/android/common/ui/shutterbutton/f;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/f;Landroid/content/res/Resources;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/f$1;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    iget-object v0, v0, Lcom/android/common/ui/shutterbutton/f;->c:Ljava/lang/Boolean;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    iget-object v1, v1, Lcom/android/common/ui/shutterbutton/f;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/f$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->o:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    .line 118
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/f$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->g:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/f$1;->b:Lcom/android/common/ui/shutterbutton/f;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/f;->c:Ljava/lang/Boolean;

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
