.class Lcom/GifEncoder/GifMakeActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$a;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$a;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->m(Lcom/GifEncoder/GifMakeActivity;)[Z

    move-result-object p1

    const/4 v0, 0x0

    aput-boolean p2, p1, v0

    return-void
.end method
