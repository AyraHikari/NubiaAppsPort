.class abstract Lcom/android/common/b/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field public a:I

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/common/b/g$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method
