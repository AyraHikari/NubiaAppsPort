.class Lcom/android/common/ui/shutterbutton/i$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/i;->a(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/android/common/ui/shutterbutton/i;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/i;Landroid/content/res/Resources;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/i$1;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    iget-object v0, v0, Lcom/android/common/ui/shutterbutton/i;->d:Ljava/lang/Boolean;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    iget-object v1, v1, Lcom/android/common/ui/shutterbutton/i;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/i$1;->a:Landroid/content/res/Resources;

    sget v3, Lcom/android/common/ui/c$d;->p:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/i;->a:Landroid/graphics/Bitmap;

    .line 124
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/i$1;->a:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/android/common/ui/shutterbutton/i;->a(Lcom/android/common/ui/shutterbutton/i;Landroid/content/res/Resources;)V

    .line 125
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i$1;->b:Lcom/android/common/ui/shutterbutton/i;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/common/ui/shutterbutton/i;->d:Ljava/lang/Boolean;

    .line 127
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
