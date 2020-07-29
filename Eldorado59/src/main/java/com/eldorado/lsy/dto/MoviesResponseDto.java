package com.eldorado.lsy.dto;
import lombok.Data;

import java.util.Arrays;
import java.util.Date;

@Data
public class MoviesResponseDto {
	private int display;
	private Item[] items;

	@Data
	static class Item {
		public String title;
		public String link;
		public String image;
		public String subtitle;
		public Date pubDate;
		public String director;
		public String actor;
		public float userRating;
	}

	public int getDisplay() {
		return display;
	}

	public void setDisplay(int display) {
		this.display = display;
	}

	public Item[] getItems() {
		return items;
	}

	public void setItems(Item[] items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "MoviesResponseDto [display=" + display + ", items=" + Arrays.toString(items) + "]";
	}

}
