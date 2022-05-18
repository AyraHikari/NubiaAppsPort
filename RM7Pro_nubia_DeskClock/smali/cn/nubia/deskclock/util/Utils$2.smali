.class final Lcn/nubia/deskclock/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/util/Utils;->ringWhenGameRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sound:I

.field final synthetic val$soundPool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;I)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcn/nubia/deskclock/util/Utils$2;->val$soundPool:Landroid/media/SoundPool;

    iput p2, p0, Lcn/nubia/deskclock/util/Utils$2;->val$sound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "arg0"    # Landroid/media/SoundPool;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 746
    iget-object v0, p0, Lcn/nubia/deskclock/util/Utils$2;->val$soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcn/nubia/deskclock/util/Utils$2;->val$sound:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 747
    return-void
.end method
