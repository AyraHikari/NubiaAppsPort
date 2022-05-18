.class Lcom/android/setting/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 278
    iget-object p1, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->c(Lcom/android/setting/e;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    .line 279
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p4

    const-string p5, "MoreSettingsFragment"

    if-nez p4, :cond_0

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is disable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMoreSettingList onItemClick arg2 "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ",key "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p3, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p3}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 285
    iget-object p3, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p3}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/setting/d;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 286
    iget-object p2, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p2, p1}, Lcom/android/setting/e;->a(Lcom/android/setting/e;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    iget-object p1, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->e(Lcom/android/setting/e;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/setting/e;->b(Lcom/android/setting/e;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p3, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p3}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/setting/d;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 289
    iget-object p2, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p2, p1}, Lcom/android/setting/e;->c(Lcom/android/setting/e;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object p3, p0, Lcom/android/setting/e$5;->a:Lcom/android/setting/e;

    invoke-static {p3}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/setting/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p2, Lcom/android/setting/ZtemtInlineSettingSwitch;

    if-eqz p1, :cond_3

    .line 292
    check-cast p2, Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-virtual {p2}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a()V

    :cond_3
    :goto_0
    return-void
.end method
