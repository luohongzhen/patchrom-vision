.class Lcom/android/OriginalSettings/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$11;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 863
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 864
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo$11;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    const-class v2, Lcom/android/OriginalSettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo$11;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 866
    const/4 v1, 0x1

    return v1
.end method
