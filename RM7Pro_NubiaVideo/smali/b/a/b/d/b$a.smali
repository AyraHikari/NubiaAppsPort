.class Lb/a/b/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/e/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/d/b$a;->a:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/d/b$a;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    return-void
.end method
